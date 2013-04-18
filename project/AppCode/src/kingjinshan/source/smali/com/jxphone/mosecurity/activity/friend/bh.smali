.class final Lcom/jxphone/mosecurity/activity/friend/bh;
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
    .line 178
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/bh;->b:Lcom/jxphone/mosecurity/activity/friend/bf;

    iput p2, p0, Lcom/jxphone/mosecurity/activity/friend/bh;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 181
    packed-switch p2, :pswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 183
    :pswitch_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bh;->b:Lcom/jxphone/mosecurity/activity/friend/bf;

    iget v1, p0, Lcom/jxphone/mosecurity/activity/friend/bh;->a:I

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/activity/friend/bf;->a(Lcom/jxphone/mosecurity/activity/friend/bf;I)V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
