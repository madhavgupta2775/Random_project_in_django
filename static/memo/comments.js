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

// Helper function to get the value of a cookie
function getCookie(name) {
  const cookieValue = document.cookie.match(`(^|;)\\s*${name}=([^;]*)`);
  return cookieValue ? cookieValue.pop() : '';
}
