.class public final Lahp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)V
    .locals 0

    iput-object p1, p0, Lahp;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lahp;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->d(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/ContactSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lahp;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity;

    invoke-virtual {v1, v0, v3}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
