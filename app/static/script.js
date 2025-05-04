function showFemaleQuote() {
    const quotes = [
        "“I am not afraid of storms, for I am learning how to sail my ship.” – Louisa May Alcott",
        "“I dwell in possibility.” – Emily Dickinson",
        "“Tell me, what is it you plan to do with your one wild and precious life?” – Mary Oliver",
        "“I am deliberate and afraid of nothing.” – Audre Lorde"
    ];
    updateQuote(quotes);
}

function showGeneralQuote() {
    const quotes = [
        "“Poetry is language at its most distilled and most powerful.” – Rita Dove",
        "“To be a poet is a condition, not a profession.” – Robert Frost",
        "“A poet is, before anything else, a person who is passionately in love with language.” – W.H. Auden",
        "“We write to taste life twice.” – Anaïs Nin"
    ];
    updateQuote(quotes);
}

function updateQuote(quotes) {
    const quoteElement = document.getElementById("quote");
    const newQuote = quotes[Math.floor(Math.random() * quotes.length)];
    quoteElement.textContent = newQuote;
}
