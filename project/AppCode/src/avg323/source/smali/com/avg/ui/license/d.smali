.class Lcom/avg/ui/license/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avg/ui/license/a;


# direct methods
.method constructor <init>(Lcom/avg/ui/license/a;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/license/d;->a:Lcom/avg/ui/license/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/avg/ui/license/d;->a:Lcom/avg/ui/license/a;

    sget-object v1, Lcom/avg/ui/license/qrreader/general/CaptureActivity;->a:Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/avg/ui/license/a;->a(Lcom/avg/ui/license/a;Ljava/util/Collection;)V

    return-void
.end method
