function checkString(s: string): boolean {
    const firstB: number = s.indexOf('b');
    return firstB === -1 || s.indexOf('a', firstB) === -1;
}

