.class final Lcom/jxphone/mosecurity/activity/friend/ba;
.super Ljava/lang/Object;
.source "NotificationPreferenceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/bc;

.field final synthetic b:Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;Lcom/jxphone/mosecurity/activity/friend/bc;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/ba;->b:Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;

    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/friend/ba;->a:Lcom/jxphone/mosecurity/activity/friend/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ba;->a:Lcom/jxphone/mosecurity/activity/friend/bc;

    invoke-virtual {v0, p3}, Lcom/jxphone/mosecurity/activity/friend/bc;->a(I)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/ba;->b:Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->a(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 93
    :pswitch_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/ba;->b:Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->b(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)Lcom/keniu/security/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/a;->d(I)V

    .line 101
    :goto_1
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/ba;->b:Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->c(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/ba;->b:Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;->b(Lcom/jxphone/mosecurity/activity/friend/NotificationPreferenceActivity;)Lcom/keniu/security/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/a;->e(I)V

    goto :goto_1

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
