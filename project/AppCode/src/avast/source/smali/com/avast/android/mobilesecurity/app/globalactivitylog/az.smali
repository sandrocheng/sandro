.class final enum Lcom/avast/android/mobilesecurity/app/globalactivitylog/az;
.super Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;
.source "GlobalActivityLogType.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 786
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;-><init>(Ljava/lang/String;IILcom/avast/android/mobilesecurity/app/globalactivitylog/z;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 821
    const v1, 0x7f0c045b

    .line 822
    const v0, 0x7f0c045c

    .line 823
    invoke-virtual {p6}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/engine/ak;->a(I)Lcom/avast/android/mobilesecurity/engine/ak;

    move-result-object v2

    .line 824
    sget-object v3, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bh;->a:[I

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/ak;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 838
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 826
    :pswitch_0
    const v1, 0x7f0c0453

    .line 827
    const v0, 0x7f0c0454

    .line 828
    goto :goto_0

    .line 830
    :pswitch_1
    const v1, 0x7f0c0455

    .line 831
    const v0, 0x7f0c0456

    .line 832
    goto :goto_0

    .line 834
    :pswitch_2
    const v1, 0x7f0c0457

    .line 835
    const v0, 0x7f0c0458

    goto :goto_0

    .line 824
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Landroid/content/res/Resources;Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 791
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->a:Landroid/widget/ImageView;

    const v1, 0x7f020119

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 793
    const v1, 0x7f0c045b

    .line 794
    const v0, 0x7f0c045c

    .line 795
    invoke-virtual {p8}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/engine/ak;->a(I)Lcom/avast/android/mobilesecurity/engine/ak;

    move-result-object v2

    .line 796
    sget-object v3, Lcom/avast/android/mobilesecurity/app/globalactivitylog/bh;->a:[I

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/ak;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 811
    :goto_0
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 812
    iget-object v2, p3, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v1, p3, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 815
    iget-object v1, p3, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->d:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p5, v2, v4

    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    return-void

    .line 798
    :pswitch_0
    const v1, 0x7f0c0453

    .line 799
    const v0, 0x7f0c0454

    .line 800
    goto :goto_0

    .line 802
    :pswitch_1
    const v1, 0x7f0c0455

    .line 803
    const v0, 0x7f0c0456

    .line 804
    goto :goto_0

    .line 806
    :pswitch_2
    const v1, 0x7f0c0457

    .line 807
    const v0, 0x7f0c0458

    goto :goto_0

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
