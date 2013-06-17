.class Lcom/antivirus/ui/antitheft/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/antitheft/b;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/antitheft/b;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/antitheft/c;->a:Lcom/antivirus/ui/antitheft/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    long-to-int v0, p4

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/antivirus/ui/antitheft/c;->a:Lcom/antivirus/ui/antitheft/b;

    invoke-static {v0}, Lcom/antivirus/ui/antitheft/b;->a(Lcom/antivirus/ui/antitheft/b;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/ui/antitheft/c;->a:Lcom/antivirus/ui/antitheft/b;

    invoke-static {v0}, Lcom/antivirus/ui/antitheft/b;->b(Lcom/antivirus/ui/antitheft/b;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/antivirus/ui/antitheft/c;->a:Lcom/antivirus/ui/antitheft/b;

    invoke-virtual {v0}, Lcom/antivirus/ui/antitheft/b;->F()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
