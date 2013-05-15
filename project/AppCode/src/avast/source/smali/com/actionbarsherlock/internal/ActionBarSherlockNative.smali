.class public Lcom/actionbarsherlock/internal/ActionBarSherlockNative;
.super Lcom/actionbarsherlock/ActionBarSherlock;
.source "ActionBarSherlockNative.java"


# annotations
.annotation runtime Lcom/actionbarsherlock/ActionBarSherlock$Implementation;
    api = 0xe
.end annotation


# instance fields
.field private mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

.field private mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;-><init>(Landroid/app/Activity;I)V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;)Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    return-object v0
.end method

.method static synthetic access$002(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;)Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    return-object p1
.end method

.method static synthetic access$100(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    new-instance v0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    goto :goto_0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->initActionBar()V

    .line 137
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->unwrap()Landroid/view/Menu;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 57
    :cond_0
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;-><init>(Landroid/view/Menu;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->callbackCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    .line 62
    return v0
.end method

.method public dispatchInvalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 50
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->findItem(Landroid/view/MenuItem;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->callbackOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 80
    return v0
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->callbackPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    .line 71
    return v0
.end method

.method public getActionBar()Lcom/actionbarsherlock/app/ActionBar;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->initActionBar()V

    .line 34
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    return-object v0
.end method

.method protected getThemedContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 183
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    .line 184
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 185
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v3, 0x1010397

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 186
    iget v0, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 192
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public hasFeature(I)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    .line 89
    return v0
.end method

.method public requestFeature(I)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    .line 98
    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 120
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->initActionBar()V

    .line 121
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->initActionBar()V

    .line 129
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgress(I)V

    .line 172
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    .line 165
    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 158
    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 151
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setSecondaryProgress(I)V

    .line 179
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method public setUiOptions(I)V
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setUiOptions(I)V

    .line 106
    return-void
.end method

.method public setUiOptions(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setUiOptions(II)V

    .line 113
    return-void
.end method

.method public startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->finish()V

    .line 203
    :cond_0
    if-eqz p1, :cond_3

    .line 204
    new-instance v0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;-><init>(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;Lcom/actionbarsherlock/view/ActionMode$Callback;)V

    .line 211
    :goto_0
    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 212
    iput-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;->onActionModeStarted(Lcom/actionbarsherlock/view/ActionMode;)V

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
