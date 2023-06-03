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

        // Update the comment section with the newly created comment
        const commentHtml = `
          <div class="comment">
            <p>${data.content}</p>
            <p>Posted by ${data.author} on ${data.date_posted}</p>
          </div>
        `;
        commentSection.insertAdjacentHTML('beforeend', commentHtml);
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
