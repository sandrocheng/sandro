.class public final Lorg/antivirus/applocker/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/pm/ResolveInfo;

.field c:Landroid/graphics/drawable/Drawable;

.field d:Z

.field final synthetic e:Lorg/antivirus/applocker/AppLockerActivity;


# direct methods
.method public constructor <init>(Lorg/antivirus/applocker/AppLockerActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/applocker/e;->e:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lorg/antivirus/applocker/e;

    iget-object v0, p0, Lorg/antivirus/applocker/e;->a:Ljava/lang/String;

    iget-object v1, p1, Lorg/antivirus/applocker/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
