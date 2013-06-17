.class public Lcom/antivirus/ui/i;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/antivirus/ui/i;->a:I

    iput-boolean p3, p0, Lcom/antivirus/ui/i;->b:Z

    iput-boolean p2, p0, Lcom/antivirus/ui/i;->c:Z

    return-void
.end method
