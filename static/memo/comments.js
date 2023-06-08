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
        const addedComment = $(commentTemplate);
        addedComment.find("p").text(data.content);
        addedComment.attr("id", `comment-${data.id}`);
        addedComment.find(".update-button").attr("id", `updatecomment-${data.id}`);
        addedComment.find(".delete-button").attr("id", `deletecomment-${data.id}`);
        
        // Insert the new comment at the second child of commentSection
        commentSection.insertBefore(addedComment[0], commentSection.children[1]);
      }
    })
    .catch((error) => {
      console.error(error);
    });
});

// const updateButton = document.getElementById('update-button');
// Get the comment update form and comment section elements
const commentUpdateForm = document.getElementById('comment-update-form');
// const commentUpdateSection = document.getElementById('comment-section');

// Attach an event listener to the update button

function updateButtonClicked(button, e) {
    e.preventDefault();
    // console.log(button.id.split("-")[1]);
    // hide the current comment which is being updated
  
    const comment = document.getElementById(`comment-${button.id.split("-")[1]}`);
    // console.log(comment);
    const commentContent = comment.querySelector('p').textContent;
  
    // $(".comment").removeClass("d-none");
    // $(".comment").addClass("d-flex");
    comment.classList.add('d-none');
    comment.classList.remove('d-flex'); 
  
    // insert the comment update form instead of the comment being updated and pass the comment id to the form
  
    const commentUpdateForm = document.getElementById('comment-update-form');
    // console.log(commentUpdateForm);
    $(commentUpdateForm).find("input[name='comment_id']").val(button.id.split("-")[1]);
    commentUpdateForm.querySelector('#comment-box').value = commentContent;
    commentUpdateForm.style.display = 'block';
    $(comment).after(commentUpdateForm);
}

const commentDeleteForm = document.getElementById('comment-delete-form');

function deleteButtonClicked(button, e) {
    e.preventDefault();
    // console.log(button.id.split("-")[1]);
    // hide the current comment which is being deleted
    const comment = document.getElementById(`comment-${button.id.split("-")[1]}`);
    // $(".comment").removeClass("d-none");
    // $(".comment").addClass("d-flex");
    comment.classList.add('d-none');
    comment.classList.remove('d-flex');

    const commentDeleteForm = document.getElementById('comment-delete-form');
    $(commentDeleteForm).find("input[name='comment_id']").val(button.id.split("-")[1]);
    commentDeleteForm.style.display = 'block';
    $(comment).after(commentDeleteForm);
}


$("#cancel-update-button").click(function (e) {
  e.preventDefault();

  // hide the comment update form and show the updated comment
  commentUpdateForm.style.display = 'none';
  const comment = document.getElementById(`comment-${commentUpdateForm.querySelector("input[name='comment_id']").value}`);
  comment.classList.remove('d-none');
  comment.classList.add('d-flex');
});

$("#cancel-delete-button").click(function (e) {
  e.preventDefault();

  // hide the comment update form and show the updated comment
  commentDeleteForm.style.display = 'none';
  const comment = document.getElementById(`comment-${commentDeleteForm.querySelector("input[name='comment_id']").value}`);
  // console.log(comment); 
  comment.classList.remove('d-none');
  comment.classList.add('d-flex');
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
        comment.classList.add('d-flex');

        // update the comment content
        comment.querySelector('p').textContent = data.content;
      }
    })
    .catch((error) => {
      console.error(error);
    });
});

// Attach an event listener to the comment delete form submission
commentDeleteForm.addEventListener('submit', (e) => {
  e.preventDefault(); // Prevent the default form submission behavior

  // Serialize the form data into URL-encoded format
  const formData = new URLSearchParams(new FormData(commentDeleteForm));

  // Send an Ajax POST request to the comment delete URL
  fetch(commentDeleteForm.action, {
    method: 'POST',
    body: formData,
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
      'X-CSRFToken': getCookie('csrftoken'),
    },
  })
    .then((response) => response.json())
    .then((data) => {
      if (data.id) {
        // Comment deletion was successful
        // hide the comment update form and show the updated comment
        commentDeleteForm.style.display = 'none';
      } else {
        // Handle the error case if the comment deletion fails
        console.error('Error deleting the comment');
      }
    })
    .catch(error => {
      console.error('Error deleting the comment:', error);
    });
});


function showDropdown(event) {
  event.stopPropagation(); // Stop event bubbling

  var dropdown = event.currentTarget.nextElementSibling;
  dropdown.classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    for (var i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}


// Helper function to get the value of a cookie
function getCookie(name) {
  const cookieValue = document.cookie.match(`(^|;)\\s*${name}=([^;]*)`);
  return cookieValue ? cookieValue.pop() : '';
}
