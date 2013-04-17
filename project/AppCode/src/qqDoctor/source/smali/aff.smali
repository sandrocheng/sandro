.class public final Laff;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Laff;->b:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;

    iput-object p2, p0, Laff;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Laff;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laff;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Laff;->b:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->i(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)V

    :cond_0
    return-void
.end method
