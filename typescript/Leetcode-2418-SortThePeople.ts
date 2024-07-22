class Person {
    #name: string;
    #height: number;

    constructor(name: string, height: number) {
        this.#name = name;
        this.#height = height;
    }

    getHeight(): number {
        return this.#height;
    }

    getName(): string {
        return this.#name;
    }

    static byHeightDesc(a: Person, b: Person): number {
        return a.getHeight() < b.getHeight() ? 1 : -1
    }
}


function sortPeople(names: string[], heights: number[]): string[] {
    const people: Person[] = [];
    for (let i = 0; i < names.length; ++i) {
        const person: Person = new Person(names[i], heights[i]);
        people.push(person);
    }

    people.sort(Person.byHeightDesc);
    return people.map(p => p.getName());
};
