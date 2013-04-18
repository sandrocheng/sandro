.class final Lcom/jxphone/mosecurity/activity/friend/be;
.super Ljava/lang/Object;
.source "PeopleCallLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/be;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/be;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->c(Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;)Lcom/jxphone/mosecurity/logic/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/be;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->b(Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v0, v1, v2}, Lcom/jxphone/mosecurity/logic/a/g;->c(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    .line 145
    return-void
.end method
