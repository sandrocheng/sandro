.class public Lcom/antivirus/ui/tablet/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/antivirus/ui/tablet/b;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/antivirus/ui/tablet/b;->b:Ljava/lang/String;

    iput v1, p0, Lcom/antivirus/ui/tablet/b;->d:I

    iput v1, p0, Lcom/antivirus/ui/tablet/b;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/antivirus/ui/tablet/b;->a(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/tablet/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/antivirus/ui/tablet/b;->b:Ljava/lang/String;

    iput p4, p0, Lcom/antivirus/ui/tablet/b;->c:I

    iput p3, p0, Lcom/antivirus/ui/tablet/b;->d:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/antivirus/ui/tablet/b;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/antivirus/ui/tablet/b;->d:I

    return v0
.end method
