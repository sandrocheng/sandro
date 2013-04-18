.class final Lcom/jxphone/mosecurity/activity/e;
.super Ljava/lang/Object;
.source "BaseContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 905
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/e;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 908
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/e;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->finish()V

    .line 909
    return-void
.end method
