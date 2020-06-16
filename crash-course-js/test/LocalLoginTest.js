const { Builder } = require('selenium-webdriver')
const path = require('path')

describe('Login', function() {
    this.timeout(30000)
    let driver

    beforeEach(async function() {
        // For Local Runs
        const vendorDirectory = path.delimiter + path.join(__dirname, '..', 'vendor')
        process.env.PATH += vendorDirectory
        driver = await new Builder().forBrowser('chrome').build()

        // For GitPod Runs
        // let opts = new chrome.Options();
        // opts.addArguments("--no-sandbox");
        // opts.addArguments("--disable-dev-shm-usage");
        // driver = await new Builder()
        //     .forBrowser('chrome')
        //     .setChromeOptions(opts)
        //     .build();
    })

    afterEach(async function() {
        await driver.quit()
    })

    it('with valid credentials', async function() {
        await driver.get('http://the-internet.herokuapp.com/login')
        await driver.findElement({ id: 'username' }).sendKeys('tomsmith')
        await driver
            .findElement({ id: 'password' })
            .sendKeys('SuperSecretPassword!')
        await driver.findElement({ css: 'button' }).click()
    })
})