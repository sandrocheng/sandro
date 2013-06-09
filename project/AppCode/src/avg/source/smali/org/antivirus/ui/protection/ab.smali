.class public final Lorg/antivirus/ui/protection/ab;
.super Lorg/antivirus/ui/BaseListAdapter;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/protection/ProtectionActivity;


# direct methods
.method public constructor <init>(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/ab;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-direct {p0, p2, p3}, Lorg/antivirus/ui/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected final updateItemView(ILorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;Lorg/antivirus/ui/BaseListAdapter$ViewHolder;)V
    .locals 6

    const v0, 0x7f020078

    const v1, 0x7f020072

    const/4 v5, 0x0

    iget-object v2, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/antivirus/ui/protection/ab;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-virtual {v3}, Lorg/antivirus/ui/protection/ProtectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-super {p0, p1, p2, p3}, Lorg/antivirus/ui/BaseListAdapter;->updateItemView(ILorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;Lorg/antivirus/ui/BaseListAdapter$ViewHolder;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Lorg/antivirus/core/EngineSettings;

    iget-object v1, p0, Lorg/antivirus/ui/protection/ab;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-virtual {v1}, Lorg/antivirus/ui/protection/ProtectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/antivirus/core/EngineSettings;-><init>(Landroid/content/Context;)V

    iget-object v1, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090007

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 3.0.3 - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->getSecDbVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lorg/antivirus/ui/protection/ab;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    iget-object v3, p0, Lorg/antivirus/ui/protection/ab;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-virtual {v3}, Lorg/antivirus/ui/protection/ProtectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/antivirus/ui/protection/ProtectionActivity;->f(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/antivirus/core/EngineSettings;->isAutoScanSMS()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lorg/antivirus/ui/protection/ab;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    iget-object v3, p0, Lorg/antivirus/ui/protection/ab;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-virtual {v3}, Lorg/antivirus/ui/protection/ProtectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/antivirus/ui/protection/ProtectionActivity;->g(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/antivirus/core/EngineSettings;->isSDScanEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_4
    invoke-static {}, Lorg/antivirus/AVSettings;->isUrlAntiPhishingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :pswitch_5
    iget-object v2, p0, Lorg/antivirus/ui/protection/ab;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    iget-object v3, p0, Lorg/antivirus/ui/protection/ab;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-virtual {v3}, Lorg/antivirus/ui/protection/ProtectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/antivirus/ui/protection/ProtectionActivity;->h(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/antivirus/core/EngineSettings;->isPUPEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_4
    iget-object v1, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
