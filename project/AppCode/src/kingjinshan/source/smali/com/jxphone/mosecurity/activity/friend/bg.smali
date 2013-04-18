.class final Lcom/jxphone/mosecurity/activity/friend/bg;
.super Ljava/lang/Object;
.source "PeopleCallLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jxphone/mosecurity/activity/friend/bf;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/bf;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/bg;->b:Lcom/jxphone/mosecurity/activity/friend/bf;

    iput p2, p0, Lcom/jxphone/mosecurity/activity/friend/bg;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bg;->b:Lcom/jxphone/mosecurity/activity/friend/bf;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/bf;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->d(Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/jxphone/mosecurity/activity/friend/bg;->a:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jxphone/mosecurity/c/j;

    .line 164
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/bg;->b:Lcom/jxphone/mosecurity/activity/friend/bf;

    iget-object v1, v1, Lcom/jxphone/mosecurity/activity/friend/bf;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;->c(Lcom/jxphone/mosecurity/activity/friend/PeopleCallLogActivity;)Lcom/jxphone/mosecurity/logic/a/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/j;->a()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/jxphone/mosecurity/logic/a/g;->c(I)Z

    .line 165
    return-void
.end method
