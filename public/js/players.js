async function fetchPlayers(id) {
    const response = await fetch(`/players/${id}`);
    const data = await response.json();
    await displayPlayers(data)
    await displayCoach(data)
}

async function displayPlayers(data) {
    const playerGrid = document.querySelector('.player-grid');
    playerGrid.innerHTML = ''; // Clear the list
    data.data.players.forEach(player => {
        const card = document.createElement('div');
        card.innerHTML =  `
            <div class="player-container">
                <header id="player-header" class="${player.team.toLowerCase()}">${player.name}</header>
                <div class="img-div">
                    <img src="/images/players/${player.team}/${player.image}" alt="Player Image">
                </div>
                <footer id="player-footer" class="${player.team.toLowerCase()}-bottom"> ${player.position} </footer>
            </div>
        `;
        
        playerGrid.appendChild(card);
    });
    
}


async function displayCoach(data) {
    const coachGrid = document.querySelector('.coach-grid');
    coachGrid.innerHTML = ''; // Clear the list
    
    const player = data.data.players[0]; // Get the first player

        const cardHTML = 
        coachGrid.insertAdjacentHTML(
            "afterbegin",
            `
            <div class="coach-container">
                <header id="coach-header" class="${player.team.toLowerCase()}">${player.coach}</header>
                <div class="img-div">
                        <img src="/images/coaches/${player.coach}.png" alt="Player Image">
                </div>
                <footer id="coach-footer" class="${player.team.toLowerCase()}-bottom">
                    <i class="fa-sharp fa-solid fa-pen-to-square" style="color: #216a20;"></i> 
                    Coach
                    <i class="fa-sharp fa-solid fa-trash" style="color: #e03739;"></i> 
                </footer>
            </div>
            `       
        );   
}

// Fetch players on page load:
document.addEventListener("DOMContentLoaded", fetchPlayers(1));