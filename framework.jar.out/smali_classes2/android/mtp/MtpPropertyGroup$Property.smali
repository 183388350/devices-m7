.class Landroid/mtp/MtpPropertyGroup$Property;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpPropertyGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Property"
.end annotation


# instance fields
.field code:I

.field column:I

.field miMetadata:I

.field final synthetic this$0:Landroid/mtp/MtpPropertyGroup;

.field type:I


# direct methods
.method constructor <init>(Landroid/mtp/MtpPropertyGroup;III)V
    .locals 1
    .param p2, "code"    # I
    .param p3, "type"    # I
    .param p4, "column"    # I

    .prologue
    .line 49
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup$Property;->this$0:Landroid/mtp/MtpPropertyGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    invoke-direct {p0, p2, p3, p4, v0}, Landroid/mtp/MtpPropertyGroup$Property;->PropertyInit(IIII)V

    .line 51
    return-void
.end method

.method constructor <init>(Landroid/mtp/MtpPropertyGroup;IIII)V
    .locals 0
    .param p2, "code"    # I
    .param p3, "type"    # I
    .param p4, "column"    # I
    .param p5, "iMetadata"    # I

    .prologue
    .line 46
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup$Property;->this$0:Landroid/mtp/MtpPropertyGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/mtp/MtpPropertyGroup$Property;->PropertyInit(IIII)V

    .line 48
    return-void
.end method

.method private PropertyInit(IIII)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "type"    # I
    .param p3, "column"    # I
    .param p4, "iMetadata"    # I

    .prologue
    .line 53
    iput p1, p0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 54
    iput p2, p0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    .line 55
    iput p3, p0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    .line 56
    iput p4, p0, Landroid/mtp/MtpPropertyGroup$Property;->miMetadata:I

    .line 57
    return-void
.end method
