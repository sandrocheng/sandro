.class public final Lorg/antivirus/ui/antitheft/k;
.super Lorg/antivirus/ui/BaseListAdapter;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/antitheft/AntiTheftActivity;


# direct methods
.method public constructor <init>(Lorg/antivirus/ui/antitheft/AntiTheftActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/antitheft/k;->a:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    invoke-direct {p0, p2, p3}, Lorg/antivirus/ui/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected final updateItemView(ILorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;Lorg/antivirus/ui/BaseListAdapter$ViewHolder;)V
    .locals 6

    const v5, 0x7f090078

    const/4 v4, 0x0

    const v3, -0x666667

    invoke-super {p0, p1, p2, p3}, Lorg/antivirus/ui/BaseListAdapter;->updateItemView(ILorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;Lorg/antivirus/ui/BaseListAdapter$ViewHolder;)V

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/antivirus/ui/antitheft/k;->a:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/k;->a:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    iget-object v2, p0, Lorg/antivirus/ui/antitheft/k;->a:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    invoke-virtual {v2}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a(Lorg/antivirus/ui/antitheft/AntiTheftActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/antivirus/antitheft/u;->b(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/antivirus/AVSettings;->shouldSendLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
