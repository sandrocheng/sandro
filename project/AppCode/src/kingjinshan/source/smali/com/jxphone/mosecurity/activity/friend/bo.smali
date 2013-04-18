.class final Lcom/jxphone/mosecurity/activity/friend/bo;
.super Ljava/lang/Object;
.source "PeopleSmsLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/bo;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bo;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->b(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v0

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->p()Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v0, v1, v2}, Lcom/jxphone/mosecurity/logic/a/j;->b(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    .line 341
    return-void
.end method
