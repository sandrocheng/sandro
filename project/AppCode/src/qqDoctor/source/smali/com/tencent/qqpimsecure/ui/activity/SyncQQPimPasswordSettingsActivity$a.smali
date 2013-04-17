.class public final Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity;

    const v0, 0x7f0300dd

    invoke-direct {p0, p2, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic d(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic e(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic f(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic g(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic h(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const v0, 0x7f0802ad

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->b:Landroid/widget/EditText;

    const v0, 0x7f0802b4

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->c:Landroid/widget/EditText;

    const v0, 0x7f0802c2

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lafb;

    invoke-direct {v1, p0}, Lafb;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802c3

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lafd;

    invoke-direct {v1, p0}, Lafd;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQPimPasswordSettingsActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0140

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
