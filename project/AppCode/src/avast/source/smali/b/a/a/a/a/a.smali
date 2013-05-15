.class public Lb/a/a/a/a/a;
.super Ljava/lang/Object;
.source "FormBodyPart.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lb/a/a/a/a/b;

.field private final c:Lb/a/a/a/a/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb/a/a/a/a/a/c;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    if-nez p2, :cond_1

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    iput-object p1, p0, Lb/a/a/a/a/a;->a:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lb/a/a/a/a/a;->c:Lb/a/a/a/a/a/c;

    .line 56
    new-instance v0, Lb/a/a/a/a/b;

    invoke-direct {v0}, Lb/a/a/a/a/b;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a/a;->b:Lb/a/a/a/a/b;

    .line 58
    invoke-virtual {p0, p2}, Lb/a/a/a/a/a;->a(Lb/a/a/a/a/a/c;)V

    .line 59
    invoke-virtual {p0, p2}, Lb/a/a/a/a/a;->b(Lb/a/a/a/a/a/c;)V

    .line 60
    invoke-virtual {p0, p2}, Lb/a/a/a/a/a;->c(Lb/a/a/a/a/a/c;)V

    .line 61
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lb/a/a/a/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Lb/a/a/a/a/a/c;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Lb/a/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-interface {p1}, Lb/a/a/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-interface {p1}, Lb/a/a/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_0
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lb/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iget-object v0, p0, Lb/a/a/a/a/a;->b:Lb/a/a/a/a/b;

    new-instance v1, Lb/a/a/a/a/g;

    invoke-direct {v1, p1, p2}, Lb/a/a/a/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lb/a/a/a/a/b;->a(Lb/a/a/a/a/g;)V

    .line 80
    return-void
.end method

.method public b()Lb/a/a/a/a/a/c;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lb/a/a/a/a/a;->c:Lb/a/a/a/a/a/c;

    return-object v0
.end method

.method protected b(Lb/a/a/a/a/a/c;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-interface {p1}, Lb/a/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface {p1}, Lb/a/a/a/a/a/c;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {p1}, Lb/a/a/a/a/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lb/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public c()Lb/a/a/a/a/b;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lb/a/a/a/a/a;->b:Lb/a/a/a/a/b;

    return-object v0
.end method

.method protected c(Lb/a/a/a/a/a/c;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p1}, Lb/a/a/a/a/a/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method
