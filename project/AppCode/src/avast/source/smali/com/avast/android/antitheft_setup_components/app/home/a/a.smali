.class public Lcom/avast/android/antitheft_setup_components/app/home/a/a;
.super Ljava/lang/Object;
.source "Names.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Netbanking"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Betabox Repository"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GigaFibe"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Poly Client"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Pet Finder"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TouchStore Pro"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jailbreaker"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "IceLiz Trial"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Mac Dev"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Surname II"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "System Explorer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Online Pro Store"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "RDP Bridge"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Recipes 2000"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GreetingCards"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Backup Lite"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Cow Race"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "FarmerLife Lite"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Dodo Gadget"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Contact Explorer"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Secure Delete"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "File Recovery"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Update Agent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/antitheft_setup_components/app/home/a/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sget-object v2, Lcom/avast/android/antitheft_setup_components/app/home/a/a;->a:[Ljava/lang/String;

    array-length v2, v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 34
    sget-object v1, Lcom/avast/android/antitheft_setup_components/app/home/a/a;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 35
    sget-object v0, Lcom/avast/android/antitheft_setup_components/app/home/a/a;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 37
    :cond_0
    sget-object v1, Lcom/avast/android/antitheft_setup_components/app/home/a/a;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0
.end method
