.class public Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static final STATE_DOWNLOADING:B = 0x2t

.field public static final STATE_DOWNLOAD_COMPLETE:B = 0x5t

.field public static final STATE_DOWNLOAD_PAUSE:B = 0x4t

.field public static final STATE_DOWNLOAD_PREPARATION:B = 0x6t

.field public static final STATE_DOWNLOAD_WAITING:B = 0x3t

.field public static final STATE_INSTALLED:B = 0x7t

.field public static final STATE_NULL:B = 0x0t

.field public static final STATE_UPDATE_PREPARATION:B = 0x1t


# instance fields
.field private final BG_VIEW_ID:I

.field private mBg:Landroid/widget/ImageView;

.field private mDownloadComplete:Landroid/widget/ImageView;

.field private mDownloadPause:Landroid/widget/ImageView;

.field private mDownloadPercentRing:Lcom/tencent/qqpimsecure/uilib/view/software/RingView;

.field private mDownloadPreparation:Landroid/widget/ImageView;

.field private mDownloadWaiting:Landroid/widget/ImageView;

.field private mDownloadingArrow:Landroid/widget/ImageView;

.field private mState:B

.field private mTextView:Landroid/widget/TextView;

.field private mUpdatePreparation:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mState:B

    const v0, 0xdbca

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->BG_VIEW_ID:I

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->configViewForQQSecure(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mState:B

    const v0, 0xdbca

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->BG_VIEW_ID:I

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->configViewForQQSecure(Landroid/content/Context;)V

    return-void
.end method

.method private changeState(B)Z
    .locals 6

    const v5, 0x7f090075

    const v4, 0x7f090076

    const/16 v3, 0x8

    const/4 v0, 0x0

    const/4 v2, 0x4

    iget-byte v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mState:B

    if-ne v1, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    iput-byte p1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mState:B

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadWaiting:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPercentRing:Lcom/tencent/qqpimsecure/uilib/view/software/RingView;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadingArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPause:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPreparation:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mUpdatePreparation:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadComplete:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0906

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadWaiting:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPercentRing:Lcom/tencent/qqpimsecure/uilib/view/software/RingView;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadingArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPause:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPreparation:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mUpdatePreparation:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadComplete:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0907

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadWaiting:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPercentRing:Lcom/tencent/qqpimsecure/uilib/view/software/RingView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadingArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPreparation:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mUpdatePreparation:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadComplete:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0b090b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadWaiting:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPercentRing:Lcom/tencent/qqpimsecure/uilib/view/software/RingView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadingArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPreparation:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mUpdatePreparation:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadComplete:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadWaiting:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPercentRing:Lcom/tencent/qqpimsecure/uilib/view/software/RingView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadingArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPreparation:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mUpdatePreparation:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadComplete:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0908

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadWaiting:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPercentRing:Lcom/tencent/qqpimsecure/uilib/view/software/RingView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadingArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPause:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPreparation:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mUpdatePreparation:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadComplete:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0909

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadWaiting:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPercentRing:Lcom/tencent/qqpimsecure/uilib/view/software/RingView;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadingArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPause:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPreparation:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mUpdatePreparation:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadComplete:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0b090a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private newCenterLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method private newImageView(I)Landroid/widget/ImageView;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method


# virtual methods
.method public configViewForQQSecure(Landroid/content/Context;)V
    .locals 7

    const v6, 0xdbca

    const/16 v3, 0x1b

    const/4 v5, 0x1

    const/4 v4, -0x2

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0200aa

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->newImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mBg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setId(I)V

    const v1, 0x7f0200ac

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->newImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPreparation:Landroid/widget/ImageView;

    const v1, 0x7f0200af

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->newImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mUpdatePreparation:Landroid/widget/ImageView;

    const v1, 0x7f0200ad

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->newImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadingArrow:Landroid/widget/ImageView;

    const v1, 0x7f0200ae

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->newImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPause:Landroid/widget/ImageView;

    const v1, 0x7f0200ab

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->newImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadComplete:Landroid/widget/ImageView;

    const v1, 0x7f0200b0

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->newImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadWaiting:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;-><init>(Landroid/content/Context;III)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPercentRing:Lcom/tencent/qqpimsecure/uilib/view/software/RingView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPercentRing:Lcom/tencent/qqpimsecure/uilib/view/software/RingView;

    invoke-virtual {v3, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->setRingColor(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPercentRing:Lcom/tencent/qqpimsecure/uilib/view/software/RingView;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->newCenterLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadingArrow:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->newCenterLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPause:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->newCenterLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPreparation:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->newCenterLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mUpdatePreparation:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->newCenterLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadComplete:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->newCenterLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadWaiting:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->newCenterLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const v2, 0x7f0b090b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mBg:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->newCenterLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v5}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->changeState(B)Z

    return-void
.end method

.method public getUpdateState()B
    .locals 1

    iget-byte v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mState:B

    return v0
.end method

.method public setDownloadComplete()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->changeState(B)Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->invalidate()V

    return-void
.end method

.method public setDownloadPause(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPercentRing:Lcom/tencent/qqpimsecure/uilib/view/software/RingView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->setRingPercent(F)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->changeState(B)Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->invalidate()V

    return-void
.end method

.method public setDownloadPreparation()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->changeState(B)Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->invalidate()V

    return-void
.end method

.method public setDownloadWaiting()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPercentRing:Lcom/tencent/qqpimsecure/uilib/view/software/RingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->setRingPercent(F)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->changeState(B)Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->invalidate()V

    return-void
.end method

.method public setDownloading(I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mDownloadPercentRing:Lcom/tencent/qqpimsecure/uilib/view/software/RingView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->setRingPercent(F)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->changeState(B)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->mTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->invalidate()V

    return-void
.end method

.method public setInstalled()V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->changeState(B)Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->invalidate()V

    return-void
.end method

.method public setUpdatePreparation()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->changeState(B)Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/SoftwareUpdateIconView;->invalidate()V

    return-void
.end method
