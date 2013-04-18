.class final Lcom/jxphone/mosecurity/activity/b;
.super Ljava/lang/Object;
.source "BaseContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/b;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 783
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 784
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/b;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    if-eqz v0, :cond_0

    .line 785
    iget-object p0, p0, Lcom/jxphone/mosecurity/activity/b;->a:Landroid/app/Activity;

    check-cast p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->finish()V

    .line 787
    :cond_0
    return-void
.end method
