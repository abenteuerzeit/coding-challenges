function frequencySort(nums: number[]): number[] {
    const frequencies: Map<number, number> = countFrequencies(nums);

    return nums.sort((a: number, b: number): number => {
        const frequencyOfValues: number[] = [frequencies.get(a) || 0, frequencies.get(b) || 0];

        if (isSame(frequencyOfValues)) {
            return decreasing([a, b]);
        }

        return increasing(frequencyOfValues);
    });

};

function isSame(arr: number[]) {
    return new Set(arr).size === 1;
}

function decreasing(arr: number[]): number {
    return arr[1] - arr[0];
}

function increasing(arr: number[]): number {
    return arr[0] - arr[1];
}

function countFrequencies(arr: number[]): Map<number, number> {
    const frequencies: Map<number, number> = new Map();

    arr.forEach((n: number): void => {
        if (!frequencies.has(n)) {
            frequencies.set(n, 1);
        } else {
            let i: number = frequencies.get(n) || 0;
            frequencies.set(n, ++i);
        }
    });

    return frequencies;
};
