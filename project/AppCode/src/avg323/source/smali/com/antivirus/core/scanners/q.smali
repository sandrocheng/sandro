.class Lcom/antivirus/core/scanners/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/antivirus/core/scanners/l;


# instance fields
.field final synthetic a:Lcom/antivirus/core/scanners/o;


# direct methods
.method constructor <init>(Lcom/antivirus/core/scanners/o;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/core/scanners/q;->a:Lcom/antivirus/core/scanners/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/core/scanners/q;->a:Lcom/antivirus/core/scanners/o;

    iget-object v0, v0, Lcom/antivirus/core/scanners/o;->a:Lcom/antivirus/core/scanners/e;

    check-cast v0, Lcom/antivirus/core/scanners/s;

    iget v1, v0, Lcom/antivirus/core/scanners/s;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/antivirus/core/scanners/s;->c:I

    return-void
.end method
