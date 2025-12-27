/**
 * Determines the best poker hand from given ranks and suits
 * @param ranks - Array of card ranks (1-13)
 * @param suits - Array of card suits ('a', 'b', 'c', 'd')
 * @returns The best possible hand type as a string
 */
function bestHand(ranks: number[], suits: string[]): string {
    // Check if all cards have the same suit (Flush)
    if (suits.every(suit => suit === suits[0])) {
        return 'Flush';
    }
  
    // Initialize frequency counter for ranks (index 0-13)
    const rankFrequency: number[] = new Array(14).fill(0);
    let hasPair: boolean = false;
  
    // Count frequency of each rank and check for combinations
    for (const rank of ranks) {
        // Increment the frequency counter for current rank
        rankFrequency[rank]++;
      
        // Check if we have three of a kind
        if (rankFrequency[rank] === 3) {
            return 'Three of a Kind';
        }
      
        // Track if we have at least one pair
        hasPair = hasPair || rankFrequency[rank] === 2;
    }
  
    // Return Pair if we found at least one pair
    if (hasPair) {
        return 'Pair';
    }
  
    // Default to High Card if no other combinations found
    return 'High Card';
}
