module.exports = {
    title: '算法',
    description: '算法',
    base: '/leetcode/',
    markdown: {
        lineNumbers: true
    },
    themeConfig: {
        logo: '/bg.jpg',
        displayAllHeaders: true, // 默认值：false
        nav: [
            { text: 'Home', link: '/tree/day01' },
            { text: 'Guide', link: '/guide/' },
            { text: 'External', link: 'https://google.com' },
        ],
        sidebar: [
            {
                title: '树',
                path: '/tree/',
                // collapsable: false,
                sidebarDepth: 1,
                children: [
                    "/tree/day01",
                    "/tree/maxDepth"
                ]
            }
        ]
    }
}
