.class final Lcom/jxphone/mosecurity/activity/friend/bn;
.super Ljava/lang/Object;
.source "PeopleSmsLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/c/l;

.field final synthetic b:Lcom/jxphone/mosecurity/activity/friend/bm;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/bm;Lcom/jxphone/mosecurity/c/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/bn;->b:Lcom/jxphone/mosecurity/activity/friend/bm;

    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/friend/bn;->a:Lcom/jxphone/mosecurity/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bn;->b:Lcom/jxphone/mosecurity/activity/friend/bm;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/bm;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->b(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/bn;->a:Lcom/jxphone/mosecurity/c/l;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/l;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/j;->b(I)Z

    .line 305
    return-void
.end method
