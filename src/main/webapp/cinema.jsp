<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>CinemaHub</title>

    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
            rel="stylesheet">
</head>

<header class="container py-3">

    <nav class="d-flex justify-content-between align-items-center">

        <div>
            <a href="#" class="text-decoration-none">
                <h1 class="h3 mb-0">CinemaHub</h1>
            </a>
        </div>

        <div class="d-flex gap-3">

            <a href="#" class="text-decoration-none">
                Home
            </a>

            <a href="#" class="text-decoration-none">
                Movies
            </a>

            <a href="#" class="text-decoration-none">
                Coming Soon
            </a>

            <a href="#" class="text-decoration-none">
                Cinema
            </a>

            <a href="#" class="text-decoration-none">
                Contact
            </a>

        </div>

    </nav>

</header>

<main>

    <section class="container py-4">

        <h2 class="mb-4">
            Now Showing
        </h2>

        <div class="row g-4">

            <div class="col-12 col-md-6 col-lg-4">

                <div class="card h-100">

                    <img src="https://placehold.co/600x800"
                         class="card-img-top"
                         alt="Inception Poster">

                    <div class="card-body">

                        <h3 class="card-title">
                            Inception
                        </h3>

                        <p class="card-text">
                            A science fiction thriller about dreams,
                            reality, and the human mind.
                        </p>

                        <a href="#" class="btn btn-primary">
                            Book Ticket
                        </a>

                    </div>

                </div>

            </div>

        </div>

    </section>

</main>
</html>