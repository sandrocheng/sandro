.class final Lajb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Laja;


# direct methods
.method constructor <init>(Laja;I)V
    .locals 0

    iput-object p1, p0, Lajb;->b:Laja;

    iput p2, p0, Lajb;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lajb;->b:Laja;

    invoke-static {v0}, Laja;->b(Laja;)Laqu;

    move-result-object v1

    iget-object v0, p0, Lajb;->b:Laja;

    invoke-static {v0}, Laja;->a(Laja;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lajb;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;

    invoke-virtual {v1, v0}, Laqu;->a(Lcom/tencent/tmsecure/module/phoneservice/IpDialPhoneNumber;)V

    return-void
.end method
