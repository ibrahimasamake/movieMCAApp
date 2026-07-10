function validateForm() {
    var fields = [
        { id: 'studentCode', name: 'Student Code' },
        { id: 'firstName', name: 'First Name' },
        { id: 'lastName', name: 'Last Name' },
        { id: 'email', name: 'Email' },
        { id: 'dateOfBirth', name: 'Date of Birth' },
        { id: 'gender', name: 'Gender' },
        { id: 'course', name: 'Course' },
        { id: 'enrollmentYear', name: 'Enrollment Year' },
        { id: 'status', name: 'Status' }
    ];

    var isValid = true;

    fields.forEach(function(field) {
        var el = document.getElementById(field.id);
        el.classList.remove('error');
        if (el.value.trim() === '') {
            el.classList.add('error');
            isValid = false;
        }
    });

    var email = document.getElementById('email');
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (email.value.trim() !== '' && !emailRegex.test(email.value.trim())) {
        email.classList.add('error');
        isValid = false;
        alert('Please enter a valid email address.');
        return false;
    }

    var enrollmentYear = document.getElementById('enrollmentYear');
    var year = parseInt(enrollmentYear.value);
    if (enrollmentYear.value.trim() !== '' && (isNaN(year) || year < 2000 || year > 2100)) {
        enrollmentYear.classList.add('error');
        isValid = false;
        alert('Enrollment year must be between 2000 and 2100.');
        return false;
    }

    if (!isValid) {
        alert('Please fill in all required fields.');
    }

    return isValid;
}
