.class public Lorg/antivirus/ui/settings/LanguageSelector;
.super Lorg/antivirus/ui/BaseToolListActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/settings/LanguageSelector;->setContentView(I)V

    const v0, 0x7f020014

    const v1, 0x7f020015

    const v2, 0x7f090025

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/antivirus/ui/settings/LanguageSelector;->a(IILjava/lang/String;Z)V

    new-instance v0, Lorg/antivirus/ui/settings/LanguageSelector$LanguageListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const-string v3, "Arabic"

    const-string v4, ""

    const v5, 0x7f0200c7

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const-string v3, "Chinese Simplified"

    const-string v4, ""

    const v5, 0x7f0200c8

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const-string v3, "Chinese Traditional"

    const-string v4, ""

    const v5, 0x7f0200c9

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const-string v3, "Czech"

    const-string v4, ""

    const v5, 0x7f0200ca

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const-string v3, "Dutch"

    const-string v4, ""

    const v5, 0x7f0200cb

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const-string v3, "English"

    const-string v4, ""

    const v5, 0x7f0200cc

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const-string v3, "French"

    const-string v4, ""

    const v5, 0x7f0200cd

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const-string v3, "German"

    const-string v4, ""

    const v5, 0x7f0200ce

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const-string v3, "Hebrew"

    const-string v4, ""

    const v5, 0x7f0200cf

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const-string v3, "Italian"

    const-string v4, ""

    const v5, 0x7f0200d0

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const-string v3, "Japanese"

    const-string v4, ""

    const v5, 0x7f0200d1

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const-string v3, "Korean"

    const-string v4, ""

    const v5, 0x7f0200d2

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const-string v3, "Polish"

    const-string v4, ""

    const v5, 0x7f0200d3

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const-string v3, "Portuguese"

    const-string v4, ""

    const v5, 0x7f0200d4

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const-string v3, "Russian"

    const-string v4, ""

    const v5, 0x7f0200d5

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const-string v3, "Spanish"

    const-string v4, ""

    const v5, 0x7f0200d6

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, p0, p0, v1}, Lorg/antivirus/ui/settings/LanguageSelector$LanguageListAdapter;-><init>(Lorg/antivirus/ui/settings/LanguageSelector;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/settings/LanguageSelector;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lorg/antivirus/ui/settings/LanguageSelector;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lorg/antivirus/ui/settings/LanguageSelector$1;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/settings/LanguageSelector$1;-><init>(Lorg/antivirus/ui/settings/LanguageSelector;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
