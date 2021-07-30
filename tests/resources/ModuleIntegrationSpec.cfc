component extends="coldbox.system.testing.BaseTestCase" appMapping="/app" {

    function beforeAll() {
        super.beforeAll();
        
        getController().getModuleService()
            .registerAndActivateModule( "app", "testingModuleRoot" );

        getWireBox().autowire( this );
    }

    /**
    * @beforeEach
    */
    function setupIntegrationTest() {
        setup();
    }

}
