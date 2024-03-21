<head>
    <%@include file="../Components/CSS Components.jsp"%>
    <link rel="stylesheet" href="../Styles/Admin/AddBook.css?v=1">
</head>
<body>
    <form onsubmit="validateInputs()" action="registerBook" method="post" enctype="multipart/form-data" id="bookRegistrationForm" class="d-flex flex-column justify-content-center">
        <h3 class="text-center my-2 mb-4">Register New Book</h3>

        <div class="mb-2 d-inline-flex align-items-center border-out">
            <label for="bookName" class="form-label">Name of the Book</label>
            <input type="text" class="form-control" id="bookName" aria-describedby="bookName" name="bookName" required>
        </div>

        <div class="mb-2 d-inline-flex align-items-center border-out">
            <label for="authorName" class="form-label">Author Name </label>
            <input type="text" class="form-control" id="authorName" aria-describedby="authorName" name="authorName" required>
        </div>

        <div class="mb-2 d-inline-flex align-items-center justify-content-between">
            <div class="d-inline-flex align-items-center minor-div border-out">
                <label for="pageCount" class="form-label">Page Count </label>
                <input type="number" class="form-control" id="pageCount" name="pageCount" inputmode="numeric" required>
            </div>
            <div class="d-inline-flex align-items-center major-div border-out">
                <label for="bookPublication" class="form-label">Publication </label>
                <input type="text" class="form-control" id="bookPublication" aria-describedby="bookPublication" name="bookPublication" required>
            </div>
        </div>

        <div class="mb-2 d-inline-flex align-items-center justify-content-between">
            <div class="d-inline-flex align-items-center justify-content-between minor-div border-out">
                <label for="bookLanguage" class="form-label dob">Language </label>
                <input type="text" class="form-control" list="languageList" id="bookLanguage" aria-describedby="bookLanguage" name="bookLanguage" required>
                <datalist id="languageList">
                    <option value="English">
                    <option value="Telugu">
                    <option value="Hindi">
                </datalist>
            </div>
            <div class="d-inline-flex align-items-center justify-content-between major-div border-out">
                <label for="bookCategory" class="form-label">Book Category </label>
                <select class="form-select w-50" id="bookCategory" aria-describedby="bookCategory" name="bookCategory" required>
                  <option selected disabled>Select a Category</option>
                  <option value="1">Romance</option>
                  <option value="2">Biography</option>
                  <option value="3">Auto-Biography</option>
                  <option value="3">Fiction</option>
                  <option value="3">Non-Fiction</option>
                  <option value="3">Kids</option>
                </select>
            </div>
        </div>

        <div class="mb-2 d-inline-flex align-items-center justify-content-between">
            <div class="d-inline-flex align-items-center justify-content-between minor-div border-out">
                <label for="bookStatus" class="form-label dob">Book Availability </label>
                <input type="text" class="form-control" list="languageList" id="bookStatus" aria-describedby="bookStatus" name="bookStatus" required>
                <datalist id="languageList">
                    <option value="English">
                    <option value="Telugu">
                    <option value="Hindi">
                </datalist>
            </div>
            <div class="input-group d-inline-flex align-items-center justify-content-between major-div border-out">
                <label for="bookImage" class="form-label">Image </label>
                <input id="bookImage" type="file" class="form-control" placeholder="Profile Image" aria-label="bookImage" aria-describedby="bookImage" name="bookImage" required>
            </div>
        </div>

        <div class="mb-2 d-inline-flex align-items-center justify-content-between">
            <div class="d-inline-flex align-items-center minor-div border-out">
                <label for="bookEdition" class="form-label">Book Edition </label>
                <input type="text" class="form-control" list="stateList" id="bookEdition" aria-describedby="bookEdition" name="bookEdition" required>
            </div>

            <div class="d-inline-flex align-items-center justify-content-between major-div border-out">
                <label for="bookTier" class="form-label">Book Tier </label>
                <select class="form-select w-50" id="bookTier" aria-describedby="bookTier" name="bookTier" required>
                    <option selected disabled>Select a Tier</option>
                    <option value="bronze">Bronze</option>
                    <option value="silver">Silver</option>
                    <option value="gold">Gold</option>
                    <option value="platinum">Platinum</option>
                </select>
            </div>
        </div>

        <div class="mb-2 d-inline-flex align-items-center justify-content-center">
            <div class="d-inline-flex align-items-center justify-content-between minor-div border-out">
                <label for="bookRating" class="form-label dob">Book Rating </label>
                <input type="number" class="form-control" id="bookRating" aria-describedby="bookRating" name="bookRating" min="1" max="5" required>
            </div>
            <div class="input-group d-inline-flex align-items-center justify-content-between major-div border-out">
                <label for="bookType" class="form-label bookType">Book Type </label>
                <input id="bookType" type="text" class="form-control" aria-label="bookType" aria-describedby="bookType" name="bookType" required>
            </div>
            <div class="input-group d-inline-flex align-items-center justify-content-between major-div border-out">
                <label for="bookQuantity" class="form-label">No.of Units </label>
                <input id="bookQuantity" type="number" class="form-control" aria-label="bookQuantity" aria-describedby="bookQuantity" name="bookQuantity" min="3" max="10" required>
            </div>
        </div>

        <div class="text-center d-flex flex-column mt-3">
            <button type="submit" id="loginButton" class="mb-2 btn btn-primary">Register Book</button>
        </div>
    </form>
    <script>
        window.addEventListener('beforeunload', () => {
          // Reset form elements or clear user inputs here
          const form = document.querySelector('#bookRegistrationForm');
          form.reset();
          // Alternatively, you can reset specific input fields
          // Example: document.getElementById('inputField').value = '';
        });
    </script>
</body>