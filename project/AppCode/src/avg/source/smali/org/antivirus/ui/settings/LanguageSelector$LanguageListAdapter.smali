.class public Lorg/antivirus/ui/settings/LanguageSelector$LanguageListAdapter;
.super Lorg/antivirus/ui/BaseListAdapter;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/settings/LanguageSelector;


# direct methods
.method public constructor <init>(Lorg/antivirus/ui/settings/LanguageSelector;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/settings/LanguageSelector$LanguageListAdapter;->a:Lorg/antivirus/ui/settings/LanguageSelector;

    invoke-direct {p0, p2, p3}, Lorg/antivirus/ui/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected final updateItemView(ILorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;Lorg/antivirus/ui/BaseListAdapter$ViewHolder;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lorg/antivirus/ui/BaseListAdapter;->updateItemView(ILorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;Lorg/antivirus/ui/BaseListAdapter$ViewHolder;)V

    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p3, Lorg/antivirus/ui/BaseListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method
