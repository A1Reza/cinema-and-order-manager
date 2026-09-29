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

<body>

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

        <h2 class="mb-4">Now Showing</h2>

        <div class="row g-4">

            <!-- Movie 1 -->
            <div class="col-12 col-md-6 col-lg-4">
                <div class="card h-100">

                    <div class="position-relative">

                        <img src="https://placehold.co/600x800"
                             class="card-img-top"
                             alt="Inception Poster">

                        <span class="position-absolute top-0 end-0 badge bg-danger m-2">
                            NEW
                        </span>

                    </div>

                    <div class="card-body">

                        <h3 class="card-title">
                            Inception
                        </h3>

                        <p class="card-text">
                            Genre: Sci-Fi / Thriller
                        </p>

                        <p class="card-text">
                            Duration: 148 min
                        </p>

                        <p class="card-text">
                            Rating: 8.8/10
                        </p>

                        <p class="card-text">
                            A skilled thief enters people's dreams
                            to steal and plant ideas.
                        </p>

                        <button class="btn btn-primary">
                            Book Ticket
                        </button>

                    </div>
                </div>
            </div>


            <!-- Movie 2 -->
            <div class="col-12 col-md-6 col-lg-4">
                <div class="card h-100">

                    <div class="position-relative">

                        <img src="https://placehold.co/600x800"
                             class="card-img-top"
                             alt="Interstellar Poster">

                        <span class="position-absolute top-0 end-0 badge bg-primary m-2">
                            IMAX
                        </span>

                    </div>

                    <div class="card-body">

                        <h3 class="card-title">
                            Interstellar
                        </h3>

                        <p class="card-text">
                            Genre: Sci-Fi / Drama
                        </p>

                        <p class="card-text">
                            Duration: 169 min
                        </p>

                        <p class="card-text">
                            Rating: 8.7/10
                        </p>

                        <p class="card-text">
                            Explorers travel through space
                            searching for a new home for humanity.
                        </p>

                        <button class="btn btn-primary">
                            Book Ticket
                        </button>

                    </div>
                </div>
            </div>


            <!-- Movie 3 -->
            <div class="col-12 col-md-6 col-lg-4">
                <div class="card h-100">

                    <div class="position-relative">

                        <img src="https://placehold.co/600x800"
                             class="card-img-top"
                             alt="The Dark Knight Poster">

                        <span class="position-absolute top-0 end-0 badge bg-warning text-dark m-2">
                            2D
                        </span>

                    </div>

                    <div class="card-body">

                        <h3 class="card-title">
                            The Dark Knight
                        </h3>

                        <p class="card-text">
                            Genre: Action / Crime
                        </p>

                        <p class="card-text">
                            Duration: 152 min
                        </p>

                        <p class="card-text">
                            Rating: 9.0/10
                        </p>

                        <p class="card-text">
                            Batman faces a criminal mastermind
                            who pushes Gotham into chaos.
                        </p>

                        <button class="btn btn-primary">
                            Book Ticket
                        </button>

                    </div>
                </div>
            </div>


            <!-- Movie 4 -->
            <div class="col-12 col-md-6 col-lg-4">
                <div class="card h-100">

                    <div class="position-relative">

                        <img src="https://placehold.co/600x800"
                             class="card-img-top"
                             alt="Avatar Poster">

                        <span class="position-absolute top-0 end-0 badge bg-success m-2">
                            3D
                        </span>

                    </div>

                    <div class="card-body">

                        <h3 class="card-title">
                            Avatar
                        </h3>

                        <p class="card-text">
                            Genre: Sci-Fi / Adventure
                        </p>

                        <p class="card-text">
                            Duration: 162 min
                        </p>

                        <p class="card-text">
                            Rating: 7.8/10
                        </p>

                        <p class="card-text">
                            A marine becomes part of an alien world
                            and its struggle for survival.
                        </p>

                        <button class="btn btn-primary">
                            Book Ticket
                        </button>

                    </div>
                </div>
            </div>


            <!-- Movie 5 -->
            <div class="col-12 col-md-6 col-lg-4">
                <div class="card h-100">

                    <div class="position-relative">

                        <img src="https://placehold.co/600x800"
                             class="card-img-top"
                             alt="Gladiator Poster">

                        <span class="position-absolute top-0 end-0 badge bg-secondary m-2">
                            2D
                        </span>

                    </div>

                    <div class="card-body">

                        <h3 class="card-title">
                            Gladiator
                        </h3>

                        <p class="card-text">
                            Genre: Action / Drama
                        </p>

                        <p class="card-text">
                            Duration: 155 min
                        </p>

                        <p class="card-text">
                            Rating: 8.5/10
                        </p>

                        <p class="card-text">
                            A Roman general seeks justice
                            after losing everything.
                        </p>

                        <button class="btn btn-primary">
                            Book Ticket
                        </button>

                    </div>
                </div>
            </div>


            <!-- Movie 6 -->
            <div class="col-12 col-md-6 col-lg-4">
                <div class="card h-100">

                    <div class="position-relative">

                        <img src="https://placehold.co/600x800"
                             class="card-img-top"
                             alt="The Matrix Poster">

                        <span class="position-absolute top-0 end-0 badge bg-info text-dark m-2">
                            NEW
                        </span>

                    </div>

                    <div class="card-body">

                        <h3 class="card-title">
                            The Matrix
                        </h3>

                        <p class="card-text">
                            Genre: Sci-Fi / Action
                        </p>

                        <p class="card-text">
                            Duration: 136 min
                        </p>

                        <p class="card-text">
                            Rating: 8.7/10
                        </p>

                        <p class="card-text">
                            A hacker discovers that reality
                            is not what it seems.
                        </p>

                        <button class="btn btn-primary">
                            Book Ticket
                        </button>

                    </div>
                </div>
            </div>

        </div>

    </section>

</main>

</body>
</html>
