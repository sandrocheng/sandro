.class final Lcom/jxphone/mosecurity/activity/friend/av;
.super Ljava/lang/Object;
.source "FriendSmsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/b;

.field final synthetic b:Lcom/jxphone/mosecurity/activity/friend/au;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/au;Lcom/jxphone/mosecurity/activity/friend/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/av;->b:Lcom/jxphone/mosecurity/activity/friend/au;

    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/friend/av;->a:Lcom/jxphone/mosecurity/activity/friend/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/av;->a:Lcom/jxphone/mosecurity/activity/friend/b;

    iput-boolean p2, v0, Lcom/jxphone/mosecurity/activity/friend/b;->a:Z

    .line 387
    return-void
.end method
