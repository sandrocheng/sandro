.class final Lcom/jxphone/mosecurity/activity/p;
.super Ljava/lang/Object;
.source "BaseContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/p;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 715
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/p;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    if-eqz v0, :cond_0

    .line 716
    iget-object p0, p0, Lcom/jxphone/mosecurity/activity/p;->a:Landroid/app/Activity;

    check-cast p0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->finish()V

    .line 718
    :cond_0
    return-void
.end method
