.class public Lorg/antivirus/wipe/BetterLocalWipe;
.super Lorg/antivirus/ui/BaseToolListActivity;


# instance fields
.field a:Lorg/antivirus/wipe/c;

.field private final b:I

.field private final c:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolListActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/antivirus/wipe/BetterLocalWipe;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/antivirus/wipe/BetterLocalWipe;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/antivirus/wipe/BetterLocalWipe;->f:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/antivirus/wipe/BetterLocalWipe;->g:I

    return-void
.end method

.method static synthetic a(Lorg/antivirus/wipe/BetterLocalWipe;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/wipe/WipeSd;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/BetterLocalWipe;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lorg/antivirus/wipe/BetterLocalWipe;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/wipe/WipeByApp;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/BetterLocalWipe;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lorg/antivirus/wipe/BetterLocalWipe;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, ":android:show_fragment"

    const-string v2, "com.android.settings.MasterClear"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/BetterLocalWipe;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.MasterClear"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method protected final initHeader(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolListActivity;->initHeader(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/BetterLocalWipe;->setContentView(I)V

    const v0, 0x7f090099

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/antivirus/ui/BaseToolListActivity;->initHeader(Ljava/lang/String;)V

    new-instance v0, Lorg/antivirus/wipe/c;

    invoke-direct {v0, p0, p0}, Lorg/antivirus/wipe/c;-><init>(Lorg/antivirus/wipe/BetterLocalWipe;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/wipe/BetterLocalWipe;->a:Lorg/antivirus/wipe/c;

    iget-object v0, p0, Lorg/antivirus/wipe/BetterLocalWipe;->a:Lorg/antivirus/wipe/c;

    invoke-virtual {p0, v0}, Lorg/antivirus/wipe/BetterLocalWipe;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lorg/antivirus/wipe/BetterLocalWipe;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lorg/antivirus/wipe/b;

    invoke-direct {v1, p0}, Lorg/antivirus/wipe/b;-><init>(Lorg/antivirus/wipe/BetterLocalWipe;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/antivirus/ui/BaseToolListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
