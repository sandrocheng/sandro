.class public final Lahr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;)V
    .locals 0

    iput-object p1, p0, Lahr;->a:Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lahr;->a:Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
