---
layout: page
title: Contact Me
icon: fas fa-envelope
order: 5
---

Have a question, or want to work together? Fill in the form below and your
message will be delivered straight to my inbox. Your details stay private.

<form action="https://formspree.io/f/mljgevvz" method="POST">
  <div class="mb-3">
    <label for="contact-name" class="form-label">Name</label>
    <input type="text" class="form-control" id="contact-name" name="name" required>
  </div>
  <div class="mb-3">
    <label for="contact-email" class="form-label">Your Email</label>
    <input type="email" class="form-control" id="contact-email" name="email" required>
  </div>
  <div class="mb-3">
    <label for="contact-message" class="form-label">Message</label>
    <textarea class="form-control" id="contact-message" name="message" rows="5" required></textarea>
  </div>
  <input type="text" name="_gotcha" style="display:none" tabindex="-1" autocomplete="off">
  <button type="submit" class="btn btn-primary">Send Message</button>
</form>
