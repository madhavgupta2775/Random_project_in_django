// Get the comment form and comment section elements
const commentForm = document.getElementById('comment-form');
const commentSection = document.getElementById('comment-section');

// Attach an event listener to the comment form submission
commentForm.addEventListener('submit', (e) => {
  e.preventDefault(); // Prevent the default form submission behavior

  // Serialize the form data into URL-encoded format
  const formData = new URLSearchParams(new FormData(commentForm));

  // Send an Ajax POST request to the comment creation URL
  fetch(commentForm.action, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
      'X-CSRFToken': getCookie('csrftoken'), // Include the CSRF token
    },
    body: formData,
  })
    .then((response) => response.json())
    .then((data) => {
      if (data.error) {
        // Handle form validation errors
        console.error(data.error);
      } else {
        // Clear the comment content in the form
        commentForm.elements.content.value = '';

        // Create a new alert element
        const alertHtml = `
          <div class="alert alert-success" role="alert">
            Comment has been added successfully.
          </div>
        `;
        const alertElement = document.createElement('div');
        alertElement.innerHTML = alertHtml;

        // Insert the alert element before the comment section
        commentSection.parentNode.insertBefore(alertElement, commentSection);

        // Get the comment template
        const commentTemplate = document.getElementById('comment-template').innerHTML;

        // Create a new DOM element from the comment template
        const commentElement = document.createElement('div');
        commentElement.innerHTML = commentTemplate;

        // Populate the comment data into the comment element
        commentElement.querySelector('.text-muted').textContent = `0 seconds ago`;
        commentElement.querySelector('p').textContent = data.content;

        // Insert the new comment at the second child of commentSection
        commentSection.insertBefore(commentElement, commentSection.children[1]);
        //commentSection.insertBefore(commentElement, commentSection.firstChild);
      }
    })
    .catch((error) => {
      console.error(error);
    });
});

const updateButton = document.getElementById('update-button'); // Get the update button element
// Get the comment update form and comment section elements
const commentUpdateForm = document.getElementById('comment-update-form');
const commentUpdateSection = document.getElementById('comment-section');

// Attach an event listener to the update button
$(".update-button").click(function (e) {
  e.preventDefault();

  // hide the current comment which is being updated

  const comment = document.getElementById(`comment-${this.id.split("-")[1]}`);
  console.log(comment);
  const commentContent = comment.querySelector('p').textContent;
  // the above line gives Cannot read properties of null (reading 'querySelector')

  $(".comment").removeClass("d-none");
  comment.classList.add('d-none');

  // insert the comment update form instead of the comment being updated and pass the comment id to the form

  const commentUpdateForm = document.getElementById('comment-update-form');
  console.log(commentUpdateForm);
  $(commentUpdateForm).find("input[name='comment_id']").val(this.id.split("-")[1]);
  commentUpdateForm.querySelector('#comment-box').value = commentContent;
  commentUpdateForm.style.display = 'block';
  $(comment).after(commentUpdateForm);
});

$("#cancel-update-button").click(function (e) {
  e.preventDefault();

  // hide the comment update form and show the updated comment
  commentUpdateForm.style.display = 'none';
  const comment = document.getElementById(`comment-${commentUpdateForm.querySelector("input[name='comment_id']").value}`);
  comment.classList.remove('d-none');
});

// Attach an event listener to the comment update form submission
commentUpdateForm.addEventListener('submit', (e) => {
  e.preventDefault(); // Prevent the default form submission behavior

  // Serialize the form data into URL-encoded format
  const formData = new URLSearchParams(new FormData(commentUpdateForm));

  // Send an Ajax POST request to the comment update URL
  fetch(commentUpdateForm.action, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
      'X-CSRFToken': getCookie('csrftoken'), // Include the CSRF token
    },
    body: formData,
  })
    .then((response) => response.json())
    .then((data) => {
      if (data.error) {
        // Handle form validation errors
        console.error(data.error);
      } else {

        // hide the comment update form and show the updated comment
        commentUpdateForm.style.display = 'none';
        const comment = document.getElementById(`comment-${data.id}`);
        comment.classList.remove('d-none');

        // update the comment content
        comment.querySelector('p').textContent = data.content;
      }
    })
    .catch((error) => {
      console.error(error);
    });
});



// Helper function to get the value of a cookie
function getCookie(name) {
  const cookieValue = document.cookie.match(`(^|;)\\s*${name}=([^;]*)`);
  return cookieValue ? cookieValue.pop() : '';
}
