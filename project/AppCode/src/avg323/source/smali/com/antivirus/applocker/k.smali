.class public Lcom/antivirus/applocker/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/pm/ResolveInfo;

.field c:Landroid/graphics/drawable/Drawable;

.field d:Z

.field final synthetic e:Lcom/antivirus/applocker/g;


# direct methods
.method public constructor <init>(Lcom/antivirus/applocker/g;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/applocker/k;->e:Lcom/antivirus/applocker/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/antivirus/applocker/k;)I
    .locals 2

    iget-object v0, p0, Lcom/antivirus/applocker/k;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/antivirus/applocker/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/antivirus/applocker/k;

    invoke-virtual {p0, p1}, Lcom/antivirus/applocker/k;->a(Lcom/antivirus/applocker/k;)I

    move-result v0

    return v0
.end method
