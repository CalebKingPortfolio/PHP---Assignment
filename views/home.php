<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rugby World Cup - 2023</title> <!-- Title of the Website -->
    <link rel="stylesheet" href="/css/layout.css"> <!-- Links the layout style css to the html -->
    <link rel="stylesheet" href="/css/main_styles.css"> <!-- Links the main style css to the html -->
    <link rel="stylesheet" href="/css/header-footer.css"> <!--Links the header & footer css to the html-->
    <link rel="stylesheet" href="/css/team-colors.css"> <!-- Links the team color css to the html -->
</head>

<body>

    <?php
        
        // CHECK TO SEE IF THE $_COOKIE{'auth-token'} is set.
        if($_COOKIE == true) {
            $isAuthenticated = true;
        }
        else {
            $isAuthenticated = false;
        }
        // IF IT IS, SET $isAuthenticated VARIBLE TO true
    ?>

    <!-- Top Nav Bar -->
    <div class="top-nav"> <!-- Start of Top Nav -->
        <a class="pl fwb" href="/">RWC 2023</a> <!-- RWC 2023 - Hyperlink -->
        <div class="nav-right"> <!-- Start of Nav Right -->

        <a class="pr fwb" href="/register">Register</a> <!-- Register - Hyperlink -->
            
            <?php if(!$isAuthenticated): ?>
                <a class="pr fwb" href="/login">Login</a> <!-- Login - Hyperlink -->
            <?php else: ?>
            <a class="pr fwb" href="/dashboard">Dashboard</a> <!-- Dashboard - Hyperlink -->
            <a id="logoutLink" class="pr fwb" href="/logout">Logout</a> <!-- Logout - Hyperlink -->
            <?php endif; ?>

        </div> <!-- End of Nav Right -->
    </div> <!-- End of Top Nav -->

    <!--Image Header -->

    <div class="image-header"> <!--Start of Image Header -->
        <h1 class="pl">Rugby World Cup - France 2023</h1> <!-- Heading Text on Image -->
    </div> <!-- End of Image Header -->

    <!-- Filter Bar -->

    <div class="filter-bar"> <!-- Start of Filter Bar -->
        <div class="search-container"> <!-- Start of Search Container -->
            
            <input id="search-bar" type="text" placeholder="Search for player..."> <!--  Search Input Field-->
            <button id="search-button" onclick="filterPlayers()">GO</button> <!-- Search Button -->

            <select id="position-select" onclick="filterPostion()"> <!-- Select Postion Starts -->
                <option value="" selected disabled>Position</option> <!-- Postion Option Disabled -->
                <option value="First-five">First-five</option> <!-- First Five Option -->
                <option value="Center">Center</option> <!-- Center Option -->
                <option value="Flanker(6)">Flanker(6)</option> <!-- Flanker(6) Option -->
                <option value="Flanker(7)">Flanker(7)</option> <!--Flanker(7) Option -->
                <option value="Flanker(8)">Flanker(8)</option> <!-- Flanker(8) Option -->
                <option value="Fullback">Fullback</option> <!-- Fullback Option -->
                <option value="Halfback">Halfback</option> <!-- Halfback Option-->
                <option value="Hooker">Hooker</option> <!-- Hooker Option -->
                <option value="Lock">Lock</option> <!-- Lock Option-->
                <option value="Loosehead-Prop">Loosehead-Prop</option> <!-- Loosehead Prop Option -->
                <option value="Second-five">Second-five</option> <!-- Second Five Option -->
                <option value="Tighthead-Prop">Tighthead-Prop</option> <!--Tighthead Prop Option -->
                <option value="Wing">Wing</option> <!-- Wing Option -->
            </select> <!--Select Postion Ends -->
        </div> <!-- End of Search Container -->
    </div> <!-- End of Filter Bar -->


    <!--Main Body-->
    
    <div class="main-grid"> <!-- Start of Main Body -->

        <div class="teams-section"> <!-- Start of Teams Section -->

            <header id="team-header" class="fwb">Teams</header> <!-- Team Header -->

                <div class="team-list"> <!-- Start of Team List -->
                    <ul class="teams-menu"></ul> <!-- Team List --> 
                </div> <!-- End of Team List -->

            <footer id="team-footer"></footer> <!-- Team Footer -->

        </div> <!-- End of Teams Section -->

        <div class="players-section">  <!-- Start of Player Section -->
            <div class="player-grid"></div> 
        </div> <!-- End of Player Section -->

        <div class="coach-section">
            <div class="coach-grid"></div>
        </div>
    </div> <!--End of Main Body -->

    <!-- Footer -->

    <div class="footer-section pl"> <!-- Start of Footer Section -->
        <h4>Created by Caleb King</4> <!-- Footer Text -->
    </div> <!-- End of Footer Section -->

    <script src="/js/players.js"></script> <!-- Links the players java script to the html -->
    <script src="/js/teams.js"></script> <!-- Links the teams java script to the html -->
    <script src="/js/search.js"></script> <!-- Links the search java script to the html -->
    <script src="/js/logout.js"></script> <!-- Links the logout java script to the html -->
</body>

</html>