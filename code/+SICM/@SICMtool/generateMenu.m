function generateMenu(self)

    % File menu
    self.gui.Menus.File = uimenu( self.gui.Window, 'Label', 'File' );

    % -- Contents
    
    fm = self.gui.Menus.File ;
    
    uimenu ( fm, 'Label', 'New',  ...
        'Separator', 'Off', 'Accelerator', 'N', ...
        'Callback' , @self.onFileNew);
    uimenu ( fm, 'Label', 'Open',  ...
        'Separator', 'On', 'Accelerator', 'O', ...
        'Callback' , @self.onFileOpen );
    uimenu ( fm, 'Label', 'Save',  ...
        'Separator', 'Off', 'Accelerator', 'S', ...
        'Callback', @self.onFileSave );
    uimenu ( fm, 'Label', 'Save As...',  ...
        'Separator', 'Off', 'Accelerator', 'A', ...
        'Callback', @self.onFileSaveAs );
    self.gui.Menus.FileImport = uimenu ( fm, 'Label', 'Import',  ...
        'Separator', 'On' );
    self.gui.Menus.FileExport = uimenu ( fm, 'Label', 'Export...',  ...
        'Separator', 'Off' );
    uimenu ( fm, 'Label', 'Close', ...
        'Separator', 'On', 'Accelerator', 'W', ...
        'Callback', @self.onClose);
    uimenu ( fm, 'Label', 'Quit', ...
        'Separator', 'Off', 'Accelerator', 'Q', ...
        'Callback', @self.onQuit);
    
    % -- -- Submenu Import
    
    uimenu ( self.gui.Menus.FileImport, 'Label', 'Scan...', ...
        'Callback', @self.onImportScan);
    uimenu ( self.gui.Menus.FileImport, 'Label', 'Approach Curve...', ...
        'Callback', @self.onImportAppCurve);
    uimenu ( self.gui.Menus.FileImport, 'Label', ...
        'Set of Approach Curves...', ...
        'Callback', @self.onImportSetAppCurve);
    uimenu ( self.gui.Menus.FileImport, 'Label', ...
        'Example Scan', 'Separator', 'On', ...
        'Callback', @self.onImportExampleScan);
    % View menu
    
    self.gui.Menus.View = uimenu( self.gui.Window, 'Label', 'View' );
    
    % -- Content
    
    uimenu ( self.gui.Menus.View, 'Label', 'Scan axes', ...
        'Callback', @self.onToggleScanAxes, ...
        'Checked', 'On');
    
    uimenu ( self.gui.Menus.View, 'Label', 'Approach Curve axes', ...
        'Callback', @self.onToggleAppAxes, ...
        'Checked', 'On');
    
end

    