// https://leetcode.com/submissions/detail/1326736702/
function luckyNumbers(matrix: number[][]): number[] {
    if (matrix.length === 0 || matrix[0].length === 0) return [];

    const rowMins: number[] = matrix.map(row =>
        row.reduce((min, val) => Math.min(min, val), Infinity)
    );

    const colMaxes: number[] = matrix[0].map((_, i) =>
        matrix.reduce((max, row) => Math.max(max, row[i]), -Infinity)
    );

    return rowMins.filter(min => colMaxes.some(max => max === min));
}

