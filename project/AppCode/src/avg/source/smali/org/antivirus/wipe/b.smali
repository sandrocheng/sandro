.class final Lorg/antivirus/wipe/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/wipe/BetterLocalWipe;


# direct methods
.method constructor <init>(Lorg/antivirus/wipe/BetterLocalWipe;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/b;->a:Lorg/antivirus/wipe/BetterLocalWipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    long-to-int v0, p4

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/antivirus/wipe/b;->a:Lorg/antivirus/wipe/BetterLocalWipe;

    invoke-static {v0}, Lorg/antivirus/wipe/BetterLocalWipe;->a(Lorg/antivirus/wipe/BetterLocalWipe;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/antivirus/wipe/b;->a:Lorg/antivirus/wipe/BetterLocalWipe;

    invoke-static {v0}, Lorg/antivirus/wipe/BetterLocalWipe;->b(Lorg/antivirus/wipe/BetterLocalWipe;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/antivirus/wipe/b;->a:Lorg/antivirus/wipe/BetterLocalWipe;

    invoke-static {v0}, Lorg/antivirus/wipe/BetterLocalWipe;->c(Lorg/antivirus/wipe/BetterLocalWipe;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
