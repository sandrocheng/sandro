.class public final Laer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Laer;->c:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    iput-object p2, p0, Laer;->a:Landroid/widget/EditText;

    iput-object p3, p0, Laer;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Laer;->c:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    iget-object v1, p0, Laer;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->a(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;Ljava/lang/String;)V

    iget-object v0, p0, Laer;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
