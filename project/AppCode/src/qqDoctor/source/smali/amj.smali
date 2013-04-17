.class final Lamj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lms;

.field private synthetic b:Lamh;


# direct methods
.method constructor <init>(Lamh;Lms;)V
    .locals 0

    iput-object p1, p0, Lamj;->b:Lamh;

    iput-object p2, p0, Lamj;->a:Lms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lamj;->b:Lamh;

    iget-object v1, p0, Lamj;->a:Lms;

    iget-object v1, v1, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    invoke-static {v0, v1}, Lamh;->a(Lamh;Ljava/lang/String;)V

    return-void
.end method
