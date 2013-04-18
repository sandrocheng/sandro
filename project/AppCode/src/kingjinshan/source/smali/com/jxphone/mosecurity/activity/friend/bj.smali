.class final Lcom/jxphone/mosecurity/activity/friend/bj;
.super Ljava/lang/Object;
.source "PeopleSmsLogActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/bj;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bj;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-static {v0, p3}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->a(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;I)I

    .line 164
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bj;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->showDialog(I)V

    .line 165
    const/4 v0, 0x1

    return v0
.end method
