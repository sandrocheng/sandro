.class public final Lcv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/RadioGroup;

.field private synthetic b:Lr;

.field private synthetic c:Lde;


# direct methods
.method public constructor <init>(Landroid/widget/RadioGroup;Lr;Lde;)V
    .locals 0

    iput-object p1, p0, Lcv;->a:Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcv;->b:Lr;

    iput-object p3, p0, Lcv;->c:Lde;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x2

    iget-object v1, p0, Lcv;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcv;->b:Lr;

    invoke-virtual {v1, v0}, Lr;->h(I)V

    iget-object v0, p0, Lcv;->c:Lde;

    invoke-virtual {v0}, Lde;->dismiss()V

    invoke-static {}, Lbo;->a()Lbo;

    move-result-object v0

    invoke-static {}, Laf;->a()Laf;

    move-result-object v1

    invoke-virtual {v1}, Laf;->c()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbo;->a(D)V

    return-void

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080027
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
