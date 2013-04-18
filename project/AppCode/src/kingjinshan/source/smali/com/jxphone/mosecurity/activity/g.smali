.class final Lcom/jxphone/mosecurity/activity/g;
.super Ljava/lang/Object;
.source "BaseContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 920
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/g;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 923
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/g;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->a(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/g;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->finish()V

    .line 926
    :cond_0
    return-void
.end method
