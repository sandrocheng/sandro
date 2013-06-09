.class final Lorg/antivirus/wipe/c;
.super Lorg/antivirus/ui/CustomListAdaptor;


# instance fields
.field final synthetic a:Lorg/antivirus/wipe/BetterLocalWipe;


# direct methods
.method public constructor <init>(Lorg/antivirus/wipe/BetterLocalWipe;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/c;->a:Lorg/antivirus/wipe/BetterLocalWipe;

    invoke-direct {p0, p2}, Lorg/antivirus/ui/CustomListAdaptor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final a(ILorg/antivirus/ui/CustomListAdaptor$ViewHolder;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p2, Lorg/antivirus/ui/CustomListAdaptor$ViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f09009a

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lorg/antivirus/ui/CustomListAdaptor$ViewHolder;->summary:Landroid/widget/TextView;

    const v1, 0x7f09009b

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lorg/antivirus/ui/CustomListAdaptor$ViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p2, Lorg/antivirus/ui/CustomListAdaptor$ViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f09009e

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lorg/antivirus/ui/CustomListAdaptor$ViewHolder;->summary:Landroid/widget/TextView;

    const v1, 0x7f09009f

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lorg/antivirus/ui/CustomListAdaptor$ViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f02016b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p2, Lorg/antivirus/ui/CustomListAdaptor$ViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f09009c

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lorg/antivirus/ui/CustomListAdaptor$ViewHolder;->summary:Landroid/widget/TextView;

    const v1, 0x7f09009d

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lorg/antivirus/ui/CustomListAdaptor$ViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f020173

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
