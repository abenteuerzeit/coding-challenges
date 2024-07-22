interface Person {
    name: string;
    height: number;
};

function sortPeople(names: string[], heights: number[]): string[] {
    return names
        .map((name, i) => ({ name, height: heights[i] } as Person))
        .sort((a, b) => b.height - a.height)
        .map(person => person.name);
}
